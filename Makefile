# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rhutchin <rhutchin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/29 11:19:49 by rhutchin          #+#    #+#              #
#    Updated: 2019/06/25 11:09:47 by rhutchin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ./libft/*c

OBJ = *o

INCL = ./libft/libft.h

all: $(NAME)

$(NAME):
	gcc -c -Wall -Werror -Wextra $(SRC)
	ar rv $(NAME) $(OBJ) $(INCL)
	ranlib $(NAME)
	mv *o ./libft
	mv *a ./libft
	gcc main_test_fd.c get_next_line.c ./libft/libft.a
	mv a.out test
	./test ./tests/love_and_peace.txt

clean:
	rm -f ./libft/*o

fclean: clean
	rm -f libft.a

re: fclean all
