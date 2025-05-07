create table authors(
    author_id number(10) primary key,
    author_name varchar(25),
    pho_no number(10)
);


create table users(
    user_id varchar(10) primary key,
    username varchar(25) not null,
    email varchar(25),
    pho_no number(10)
);

create table genres(
    genre_id varchar(25) primary key,
    genre_name varchar(25) unique
);

create table books(
    book_id varchar(15) primary key,
    title varchar(25) not null,
    author_id number(10),
    foreign key (author_id) references authors(author_id),
    genre_id varchar(25),
    foreign key (genre_id) references genres(genre_id),
    publication_year number(4)
);

create table loans(
    loan_id varchar(10) primary key,
    user_id varchar(10),
    foreign key (user_id) references users(user_id),
    book_id varchar(15),
    foreign key (book_id) references books(book_id),
    loan_date date,
    return_date date
);