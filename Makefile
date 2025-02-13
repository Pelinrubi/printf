NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra

AR = ar rc

RM = rm -f

SRC = ft_pointer.c\
		ft_printf.c\
		ft_putchar.c\
		ft_puthex.c\
		ft_putnbr_u.c\
		ft_putnbr.c\
		ft_putstr.c\

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re