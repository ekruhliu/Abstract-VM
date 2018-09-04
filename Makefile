# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ekruhliu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/04 18:56:37 by ekruhliu          #+#    #+#              #
#    Updated: 2018/09/04 18:56:38 by ekruhliu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = avm

SRC = Parcer.cpp main.cpp

OBJ = $(SRC:.cpp=.o)

HDRS = Parcer.hpp

FLAGS = clang++ -Wall -Werror -Wextra -O3

all: $(NAME)

$(NAME): $(OBJ) $(HDRS)
	@$(FLAGS) -c $(SRC)
	@$(FLAGS) $(OBJ) -o $(NAME)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
