

DROP DATABASE IF EXISTS baranggaySystem;
CREATE DATABASE baranggaySystem;
USE baranggaySystem;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    verified BOOLEAN DEFAULT FALSE,
    code VARCHAR(100) DEFAULT NULL,
    firstName VARCHAR(50) DEFAULT NULL,
    middleName VARCHAR(50) DEFAULT NULL,
    lastName VARCHAR(50) DEFAULT NULL,
    email VARCHAR(50) DEFAULT NULL UNIQUE,
    password VARCHAR(255) DEFAULT NULL,
    date DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE service (
    id INT PRIMARY KEY AUTO_INCREMENT,
    userId INT,
    userName VARCHAR(100),
    price DECIMAL, 
    status VARCHAR(50) DEFAULT "Pending",
    name VARCHAR(50),
    type VARCHAR(50),
    information JSON,
    serviceType INT,

    alreadyFeedback BOOLEAN DEFAULT FALSE,
    feedback VARCHAR(255),
    rating VARCHAR(255),

    track VARCHAR(250) DEFAULT "The order is still pending.",
    dateAccepted DATE DEFAULT NULL,
    dateCompleted DATE DEFAULT NULL,
    createdAt DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO users (verified, firstName, middleName, lastName, email, password, code) VALUES
(TRUE, 'admin', 'admin', 'admin', 'admin', 'admin', ''),
(FALSE, 'test1', 'middle1', 'Test1', 'test1@example.com', '$2y$10$qvkBAAPra6VFouM2DWMsZOZc6I3nwv7emCn4EdKutGtMGOdszUsHu', ''),
(TRUE, 'jd', 'pega', 'JDM', 'jdmaster888@gmail.com', '$2y$10$qvkBAAPra6VFouM2DWMsZOZc6I3nwv7emCn4EdKutGtMGOdszUsHu', ''),
(TRUE, 'test2', 'middle2', 'Test2', 'test2@example.com', '$2y$10$qvkBAAPra6VFouM2DWMsZOZc6I3nwv7emCn4EdKutGtMGOdszUsHu', '');


-- USE baranggaySystem;

-- SELECT * FROM users WHERE verified = FALSE AND code = '';