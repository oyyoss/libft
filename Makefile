# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: erigonza <erigonza@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/12 11:21:29 by erigonza          #+#    #+#              #
#    Updated: 2024/04/17 12:05:12 by erigonza         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#-----------------------------------VARIABLES----------------------------------#

# NAME = libft.a

# RM = rm -fr

# INCL = libft.h
# SRCS = ft_atoi.c ft_itoa.c ft_putchar.c ft_putstr.c ft_putnbr.c ft_putchar_fd.c \
# 	   ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_isalpha.c ft_isdigit.c \
# 	   ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_memset.c \
# 	   ft_bzero.c ft_memcmp.c ft_memmove.c ft_memchr.c ft_memcpy.c ft_calloc.c \
# 	   ft_strlen.c ft_strdup.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
# 	   ft_strnstr.c ft_strncmp.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
# 	   ft_strmapi.c ft_striteri.c \
# 	   ft_printf.c \
# 	   get_next_line.c get_next_line_utils.c \
# 	   ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
# 	   ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
# OBJS = $(SRCS:%.c=%.o)
# DEPS = $(SRCS:%.c=%.d)

# CFLAGS = -Wall -Wextra -Werror -MMD -g -fsanitize=address

# #------------------------------------EXECUTE-----------------------------------#

# %.o: %.c Makefile
# 	$(CC) $(CFLAGS) -c $< -o $@

# all: $ (NAME)

# $(NAME): $(OBJS) 
# 	ar rcs $(NAME) $(OBJS)

# #-------------------------------------CLEAN------------------------------------#

# clean:
# 	$(RM) $(OBJS) $(DEPS)

# fclean: clean
# 	$(RM) $(NAME)

# re: fclean all

# -include $(DEPS)

# .PHONY: all clean fclean re
#.SILENT:

######################################################################################

SRCS = ft_atoi.c ft_itoa.c ft_putchar.c ft_putstr.c ft_putnbr.c ft_putchar_fd.c \
	   ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_isalpha.c ft_isdigit.c \
	   ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_memset.c \
	   ft_bzero.c ft_memcmp.c ft_memmove.c ft_memchr.c ft_memcpy.c ft_calloc.c \
	   ft_strlen.c ft_strdup.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
	   ft_strnstr.c ft_strncmp.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
	   ft_strmapi.c ft_striteri.c \
	   ft_printf.c \
	   get_next_line.c get_next_line_utils.c \
	   ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	   ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

DIR_SRC = ./src
DIR_OBJ = $(DIR_SRC)/obj

OBJS = $(addprefix $(DIR_OBJ)/, $(SRCS:.c=.o))
NAME	= libft.a

AR		= ar rcs
RM		 = rm -fr
CFLAGS	= -Wall -Wextra -Werror -g -fsanitize=address
CC = gcc

all:		dir ${NAME}

dir:
				mkdir -p $(DIR_OBJ)

$(DIR_OBJ)/%.o:		$(DIR_SRC)/%.c Makefile ./inc/pipex.h
				$(CC) $(CFLAGS) -c $< -o $@  $(INCLUDES)

$(NAME): $(OBJS) 
				$(AR) $(NAME) $(OBJS)


clean:
				${RM} ${OBJS}
				clear

fclean:		clean
				${RM} ${NAME} ${DIR_OBJ}
				clear

re:			fclean all

.PHONY:		clean fclean re all
# .SILENT:

# $(DIR_OBJ)/%.o:		$(DIR_SRC)/%.c Makefile ./inc/pipex.h
# 				$(CC) $(FLAGS)  -c $< -o $@ $(INCLUDES)
# 				clear

# ${NAME}:	${OBJS}
# 				${CC} ${CFLAGS} ${OBJS} -o ${NAME}
# 				clear