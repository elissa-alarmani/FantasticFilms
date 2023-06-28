# FantasticFilms: IMDB's Top 250 Movies
CS 3200: Database Design

By: Elissa Alarmani, Sheena Kaw, and Pauline Liu
## About
**FantasticFilms** is a Python script that utilizes a MySQL database to provide search operations and user management for movies. It connects to the database using pymysql and allows users to search for movies, leave impressions, and manage their information. The project is based on the ["IMDB Top 250 Movies"](https://www.kaggle.com/datasets/karkavelrajaj/imdb-top-250-movies) dataset from Kaggle, which scraped data from the IMDB website. Enjoy exploring IMDB's top-rated films with FantasticFilms!

## Step 1: Prerequisites
Make sure you have Python 3 installed. You can check by running the following command in your terminal window:

``` python3 --version ```

It is ideal to use a virtualenv or equivalent to manage the downloaded requirements.


## Step 2: Required Python Modules
All the required Python modules are listed in the `requirements.txt` file. To install them, navigate to the project folder and run the following command:

``` pip install -r requirements.txt ```

Alternatively, if you prefer to install the requirements individually, you can use the following commands:
- pandas: ```pip install pandas```
- pymysql: ```pip install pymysql```

## Step 3: Import Database Dump
1. Create a MySQL connection in MySQL Workbench.
2. Download the `fantasticfilmsdatabasedump.sql` file.
3. In MySQL Workbench, go to **Server** > **Data Import** > **Import from Self-Contained File**.
4. Select the `fantasticfilmsdatabasedump.sql` file.
5. Choose **Dump Structure and Data** and click **Start Import**.
6. Once the import process is complete, the tables in the `imdb` database should contain the necessary data.
   - Note: The database dump file contains stored procedures, schema, and data.

## Step 4: Running the Project
If you prefer using an IDE, run the `main.py` file. Otherwise, you can run the application in the terminal by navigating to the project directory and executing the following command:

```python3 main.py```


Follow the instructions in the command line prompt. You will be prompted to enter your MySQL username and password.

That's it! Enjoy exploring IMDB's Top 250 Movies using the FantasticFilms project.



