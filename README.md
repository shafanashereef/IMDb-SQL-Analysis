# 🎬 IMDb SQL Analysis Project

## Overview
This repository contains an SQL-based analysis of movie industry data, focusing on actors, directors, genres, movies, and roles.  
The project demonstrates practical SQL skills through real-world analytical queries and data exploration.

---

## Database Schema
The project uses the following tables:

### `actors`
- first_name  
- last_name  
- gender  

### `directors`
- first_name  
- last_name  

### `directors_genres`
- Links directors → genres  

### `movies`
- movie_name  
- release_year  
- rank_score  
- additional metadata  

### `movies_directors`
- Links movies → directors  

### `movies_genres`
- Links movies → genres  

### `roles`
- Links actors → movies → role_name  

---

## SQL Tasks Completed
This project includes 15 analytical SQL queries:

1. List all actors with details  
2. Count movies directed by each director  
3. Movies released after 2000  
4. Top 5 movies by rank score  
5. Count male vs. female actors  
6. Actors who played the role "Demon"  
7. Genres of movie with `movie_id = 1`  
8. Movies directed by "Anthony Abrams"  
9. Number of movies in each genre  
10. Top 5 directors by average rank score  
11. Directors who worked in more than one genre  
12. Actors who acted in Action genre movies  
13. Actors who acted in more than 5 movies  
14. Movies with directors and genres  
15. Genre with the highest number of directors  

---

## Tech Stack
- **Database:** MySQL  
- **Tools:** MySQL Workbench 
- **Dataset:** IMDb-style relational schema  

---

## What I Learned
- Writing optimized SQL queries  
- Multi-table joins  
- Aggregation & filtering (`GROUP BY`, `HAVING`)  
- Subqueries & ranking logic  
- Extracting meaningful insights from datasets  

---

## Connect With Me
Feel free to explore the project, provide feedback, or reach out for collaboration!

---
