#!/usr/bin/env python
# -*- coding: utf-8 -*-


# %% Simple selector (MySQL database)
# import pymysql for a simple interface to a MySQL DB
import pymysql
import pandas as pd


# Prompt the user for MySQL username and password
def get_mysql_connection():
    username = input("Enter MySQL Username: ")
    while True:
        password = input("Enter MySQL Password: ")

        try:
            cnx = pymysql.connect(host='localhost', user=username, password=password, db='imdb',
                                  charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
            break
        except pymysql.err.OperationalError as e:
            print('Error: %d: %s' % (e.args[0], e.args[1]))
    return cnx


def print_search_opt():
    print("Search Options:")
    print("1. Search movies by genre: Enter 'search-by-genre'")
    print("2. Search movies by year: Enter 'search-by-year'")
    print("3. Search movies by movie name: Enter 'search-by-movie-name'")
    print("4. Search movies by actor: Enter 'search-by-actor'")
    print("5. Search movies by director: Enter 'search-by-director'")
    print("6. Search movies by writer: Enter 'search-by-writer'")
    print("--Also Available: Additional Info Options--:")
    print("7. Get movie info: Enter 'get-movie-info'")
    print("8. Get genre info: Enter 'get-genre-info'")
    print("9. Get director info: Enter 'get-director-info'")
    print("10. Get actor info: Enter 'get-actor-info'")
    print("11. Get writer info: Enter 'get-writer-info'")
    print("12. Get top review: Enter 'get-top-review'")
    print("13. View available options: Enter 'help'")
    print("14. Quit: Enter 'quit'")
    print("==========================")


def try_again():
    while True:
        choice = input("Do you want to try again? (Y/N): ")
        if choice.lower() == 'y':
            return True  # Retry the input
        elif choice.lower() == 'n':
            print_search_opt()
            return False  # Go back to the search options
        else:
            print("Invalid choice. Please enter 'Y' or 'N'.")


def print_welcome_view():
    print("**********************************************")
    print("Welcome to FantasticFilms, our IMDB Top 250 Movie Database!")
    print("Here you will be able to search through the top 250 rated IMDB films!")
    print("Get ready to discover your next favorite film. You can search, add movies to watch lists, and review movies")
    print("**********************************************")


def user_signin(cnx):
    user_signin = input("Please enter your user ID. If you are a new user, please enter 'NEW'. ")

    if user_signin.upper() == 'NEW':
        name = input('Please enter your first and last name. ').split(' ')
        first_name = name[0]
        last_name = name[1]
        cur = cnx.cursor()
        cur.callproc('create_new_user', args=(first_name, last_name))
        cur.execute("SELECT user_id from app_user ORDER BY user_id DESC LIMIT 1")
        user_id = cur.fetchall()[0]['user_id']
        print('Your user ID is:', user_id)
        cur.close()

    else:
        user_id = user_signin
        cur = cnx.cursor()
        cur.execute(f'SELECT user_first_name FROM app_user WHERE user_id = {user_id}')
        print(f'Welcome, {cur.fetchall()[0]["user_first_name"]}!')
        print()
        cur.close()
    return user_id


def print_homepage():
    print("Homepage!")
    print("1. Search movies: Enter 'search-movies'")
    print("2. View all movies: Enter 'view-all-movies'")
    print("3. View watch list and your reviews: Enter 'view-watch-list'")
    print("4. View want to watch list: Enter 'view-want-to-watch-list'")
    print("5. Quit: Enter 'quit'")
    print("==========================")


def search_movies(cnx):
    while True:
        print("You are currently in the 'Search movies' section.")
        print_search_opt()
        search_option = input("Enter your search option (or 'back' to go back):")
        if search_option.lower() == 'back':
            break
        elif search_option.lower() == 'search-by-genre':
            search_by_genre(cnx)
        elif search_option.lower() == 'search-by-year':
            search_by_year(cnx)
        elif search_option.lower() == 'search-by-movie-name':
            search_by_movie_name(cnx)
        elif search_option.lower() == 'search-by-actor':
            search_by_actor(cnx)
        elif search_option.lower() == 'search-by-director':
            search_by_director(cnx)
        elif search_option.lower() == 'search-by-writer':
            search_by_writer(cnx)
        elif search_option.lower() == 'get-movie-info':
            get_movie_info(cnx)
        elif search_option.lower() == 'get-genre-info':
            get_genre_info(cnx)
        elif search_option.lower() == 'get-director-info':
            get_director_info(cnx)
        elif search_option.lower() == 'get-actor-info':
            get_actor_info(cnx)
        elif search_option.lower() == 'get-writer-info':
            get_writer_info(cnx)
        elif search_option.lower() == 'get-top-review':
            get_top_review(cnx)
        elif search_option.lower() == 'help':
            print_search_opt()
        elif search_option.lower() == 'quit':
            break
        else:
            print("Invalid search option. Please try again.")


def search_by_genre(cnx):
    while True:
        # Get the genre options
        try:
            cur = cnx.cursor()
            cur.execute("SELECT genre_name FROM genre")
            genre_options = [row['genre_name'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        print('Genre options:', genre_options[1:])
        genre = input("Enter genre: ")

        if genre in genre_options:
            try:
                cur = cnx.cursor()
                cur.callproc('search_by_genre', args=(genre,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid genre. ")
            if not try_again():
                break


def search_by_year(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT release_year FROM movie")
            year_options = [row['release_year'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        year = input("Enter year: ")

        if year in year_options:
            try:
                cur = cnx.cursor()
                cur.callproc('search_by_year', args=(year,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid year. ")
            if not try_again():
                break


def search_by_movie_name(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT movie_name FROM movie")
            name_options = [row['movie_name'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        movie_name = input("Enter movie name: ")

        if movie_name in name_options:
            try:
                cur = cnx.cursor()
                cur.callproc('search_by_movie_name', args=(movie_name,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid movie name. ")
            if not try_again():
                break
            break  # Exit the loop and go back to the main options


def search_by_actor(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT actor_name FROM lead_actor")
            actor_options = [row['actor_name'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        actor_name = input("Enter actor name: ")

        if actor_name in actor_options:
            try:
                cur = cnx.cursor()
                cur.callproc('search_by_actor', args=(actor_name,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid actor name. ")
            if not try_again():
                break


def search_by_director(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT director_name FROM lead_director")
            director_options = [row['director_name'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        director_name = input("Enter director name: ")

        if director_name in director_options:
            try:
                cur = cnx.cursor()
                cur.callproc('search_by_director', args=(director_name,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid director name.")
            if not try_again():
                break


def search_by_writer(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT writer_name FROM lead_writer")
            writer_options = [row['writer_name'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        writer_name = input("Enter writer name: ")

        if writer_name in writer_options:
            try:
                cur = cnx.cursor()
                cur.callproc('search_by_writer', args=(writer_name,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid writer name.")
            if not try_again():
                break


def get_movie_info(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT movie_id FROM movie")
            id_options = [row['movie_id'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        movie_id = input("Enter movie ID: ")

        if movie_id in id_options:
            try:
                cur = cnx.cursor()
                cur.callproc('get_movie_info', args=(movie_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid movie id. ")
            if not try_again():
                break


def get_genre_info(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT movie_id FROM movie")
            id_options = [row['movie_id'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        movie_id = input("Enter movie ID: ")

        if movie_id in id_options:
            try:
                cur = cnx.cursor()
                cur.callproc('get_genre_info', args=(movie_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid movie id. ")
            if not try_again():
                break


def get_director_info(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT movie_id FROM movie")
            id_options = [row['movie_id'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        movie_id = input("Enter movie ID: ")

        if movie_id in id_options:
            try:
                cur = cnx.cursor()
                cur.callproc('get_director_info', args=(movie_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid movie id. ")
            if not try_again():
                break


def get_actor_info(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT movie_id FROM movie")
            id_options = [row['movie_id'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        movie_id = input("Enter movie ID: ")

        if movie_id in id_options:
            try:
                cur = cnx.cursor()
                cur.callproc('get_actor_info', args=(movie_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid movie id. ")
            if not try_again():
                break


def get_writer_info(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT movie_id FROM movie")
            id_options = [row['movie_id'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        movie_id = input("Enter movie ID: ")

        if movie_id in id_options:
            try:
                cur = cnx.cursor()
                cur.callproc('get_writer_info', args=(movie_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid movie id. ")
            if not try_again():
                break


def get_top_review(cnx):
    while True:
        try:
            cur = cnx.cursor()
            cur.execute("SELECT movie_id FROM movie")
            id_options = [row['movie_id'] for row in cur.fetchall()]
            cur.close()
        except pymysql.Error as e:
            print("Error: %s" % e)
            print_search_opt()
            break

        movie_id = input("Enter movie ID: ")

        if movie_id in id_options:
            try:
                cur = cnx.cursor()
                cur.callproc('get_top_review', args=(movie_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)
                cur.close()
                print("Results:")
                print(results_df.to_string(index=False))
                break
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            print("Invalid movie id. ")
            if not try_again():
                break


def view_watch_list(cnx, user_id):
    try:
        cur = cnx.cursor()
        cur.callproc('display_watched_movies', args=(user_id,))
        result = cur.fetchall()
        watched_movies_df = pd.DataFrame(result)
        pd.set_option('display.max_columns', None)  # Show all columns
        cur.close()
        print()
        print("Your Watched Movies")
        print(watched_movies_df.to_string(index=False))
    except pymysql.Error as e:
        print("Error: %s" % e)

    edit_watch_list(cnx, user_id)

    while True:
        print('Do you want to write or update a review for a movie on your watched list? Type "write" to '
              'write a review and "update" to update a review.')
        print('You can also type "delete" to delete a review, "read" to read a review, and "read all" to '
              'read all of your reviews.')
        review = input('Type "none" if none of these options apply. ')

        if review.lower() == 'write':
            write_review(cnx, user_id)

        elif review.lower() == 'update':
            update_review(cnx, user_id)

        elif review.lower() == 'delete':
            delete_review(cnx, user_id)

        elif review.lower() == 'read':
            read_review(cnx, user_id)

        elif review.lower() == 'read all':
            read_all_reviews(cnx, user_id)

        elif review.lower() == 'none':
            break


def edit_watch_list(cnx, user_id):
    while True:
        edit_watch_list = input('Do you want to add or delete a movie from to your watched list? '
                                'Type "add" to add, "delete" to delete, or "none" for neither. ')
        if edit_watch_list.lower() == 'add' or edit_watch_list.lower() == 'delete':
            movie_name = input('Please enter the movie name of the movie you want to add or delete. ')
            try:
                if edit_watch_list.lower() == 'add':
                    location = input('Where did you watch this movie? ')
                    cur = cnx.cursor()
                    cur.callproc('add_to_watched', args=(user_id, movie_name, location))
                    cnx.commit()
                    cur.close()
                elif edit_watch_list.lower() == 'delete':
                    cur = cnx.cursor()
                    cur.callproc('delete_from_watched', args=(user_id, movie_name))
                    cnx.commit()
                    cur.close()
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            try:
                cur = cnx.cursor()
                cur.callproc('display_watched_movies', args=(user_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)  # Show all columns
                cur.close()
                print("Your Watched Movies")
                print(results_df.to_string(index=False))
            except pymysql.Error as e:
                print("Error: %s" % e)
            break


def write_review(cnx, user_id):
    movie_name = input('Please enter the movie name of the movie you want to review. ')
    stars = input(f'How many stars would you give {movie_name}? (1 to 5) ')
    review = input(f'Please write your review for {movie_name}. ')
    try:
        cur = cnx.cursor()
        cur.callproc('create_user_review', args=(user_id, movie_name, review, stars))
        cnx.commit()
        cur.close()
    except pymysql.Error as e:
        print("Error: %s" % e)


def update_review(cnx, user_id):
    movie_name = input(
        'Please enter the movie name for the review you want to update. If you have multiple'
        ' reviews for this movie, only the most recent review will be updated. ')
    stars = input(f'How many stars would you give {movie_name}? (1 to 5) ')
    review = input(f'Please write your updated review for {movie_name}. ')
    try:
        cur = cnx.cursor()
        cur.callproc('update_stars_and_descript', args=(user_id, movie_name, stars, review))
        cnx.commit()
        cur.close()
    except pymysql.Error as e:
        print("Error: %s" % e)


def delete_review(cnx, user_id):
    movie_name = input(
        'Enter the movie name of the movie review you want to delete. If you have multiple '
        'reviews for this movie, please note that the oldest review will be deleted.')
    cur = cnx.cursor()
    cur.callproc('delete_user_review', args=(user_id, movie_name))
    cnx.commit()
    cur.close()


def read_review(cnx, user_id):
    movie_name = input('Please enter the movie name of the movie review you want to read. ')
    cur = cnx.cursor()
    cur.callproc('read_one_user_reviews', args=(user_id, movie_name))
    result = cur.fetchall()
    results_df = pd.DataFrame(result)
    pd.set_option('display.max_columns', None)  # Show all columns
    print(results_df.to_string(index=False))
    cur.close()


def read_all_reviews(cnx, user_id):
    cur = cnx.cursor()
    cur.callproc('read_all_user_reviews', args=(user_id,))
    result = cur.fetchall()
    results_df = pd.DataFrame(result)
    pd.set_option('display.max_columns', None)  # Show all columns
    cur.close()
    print("Your Reviews")
    print(results_df.to_string(index=False))


def view_want_to_watch_list(cnx, user_id):
    try:
        print()
        print("Your Want-to-Watch Movies")
        cur = cnx.cursor()
        cur.callproc('display_want_to_watch_movies', args=(user_id,))
        result = cur.fetchall()
        results_df = pd.DataFrame(result)
        pd.set_option('display.max_columns', None)  # Show all columns
        cur.close()
        print(results_df.to_string(index=False))
    except pymysql.Error as e:
        print("Error: %s" % e)

    edit_want_to_watch_list(cnx, user_id)


def edit_want_to_watch_list(cnx, user_id):
    while True:
        edit_want_to_watch_list = input('Do you want to add or delete a movie from to your want to watch list? '
                                        'Type "add" to add, "delete" to delete, or "no" for neither. ')
        if edit_want_to_watch_list.lower() == 'add' or edit_want_to_watch_list.lower() == 'delete':
            movie_name = input('Please enter the movie name of the movie you want to add or delete. ')
            try:
                if edit_want_to_watch_list.lower() == 'add':
                    cur = cnx.cursor()
                    cur.callproc('add_to_want_to_watch', args=(user_id, movie_name))
                    cnx.commit()
                    cur.close()
                elif edit_want_to_watch_list.lower() == 'delete':
                    cur = cnx.cursor()
                    cur.callproc('delete_from_want_to_watch', args=(user_id, movie_name))
                    cnx.commit()
                    cur.close()
            except pymysql.Error as e:
                print("Error: %s" % e)
        else:
            try:
                cur = cnx.cursor()
                cur.callproc('display_want_to_watch_movies', args=(user_id,))
                result = cur.fetchall()
                results_df = pd.DataFrame(result)
                pd.set_option('display.max_columns', None)  # Show all columns
                cur.close()
                print("Your Want-to-Watch Movies")
                print(results_df.to_string(index=False))
            except pymysql.Error as e:
                print("Error: %s" % e)
            break


def view_all_movies(cnx):
    try:
        cur = cnx.cursor()
        cur.callproc('display_all_movies')
        result = cur.fetchall()
        results_df = pd.DataFrame(result)
        pd.set_option('display.max_columns', None)  # Show all columns
        cur.close()
        print("IMDB Top 250 Movies")
        print(results_df.to_string(index=False))
        cur.close()
    except pymysql.Error as e:
        print("Error: %s" % e)


def quit_imdb_database(cnx):
    if cnx.open:
        cnx.close()
    quit()


def main():
    cnx = get_mysql_connection()
    print_welcome_view()
    user_id = user_signin(cnx)

    while True:
        print_homepage()
        user_option = input("Enter your option: ")
        if user_option.lower() == 'search-movies':
            search_movies(cnx)

        elif user_option.lower() == 'view-watch-list':
            view_watch_list(cnx, user_id)

        elif user_option.lower() == 'view-want-to-watch-list':
            view_want_to_watch_list(cnx, user_id)

        elif user_option.lower() == 'view-all-movies':
            view_all_movies(cnx)

        elif user_option.lower() == 'quit':
            quit_imdb_database(cnx)


main()
