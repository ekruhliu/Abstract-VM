# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ekruhliu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/31 14:49:29 by ekruhliu          #+#    #+#              #
#    Updated: 2018/08/31 14:49:29 by ekruhliu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = clang++ -Wall -Werror -Wextra -O3

NAME = avm

SRC = main.cpp

HEAD =

OBJ = $(SRC:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJ) $(HEAD)
		@ $(FLAGS) -o $(NAME) $(OBJ)

%.o: %.cpp
		@ $(FLAGS) -o $@ -c $<
clean:
		@ rm -rf $(OBJ)

fclean: clean
		@ rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
