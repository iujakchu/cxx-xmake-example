#pragma once
#include <iostream>
#include <memory>
#include <string>

struct Person {
    std::string name;

    Person() { this->name = "cpp expert!"; }

    void print_name() { std::cout << this->name << std::endl; }
};

const std::string &get_name(const Person &person);

std::unique_ptr<Person> make_person();
