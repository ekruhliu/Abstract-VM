/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.cpp                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ekruhliu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/31 14:51:59 by ekruhliu          #+#    #+#             */
/*   Updated: 2018/08/31 14:52:00 by ekruhliu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Parcer.hpp"

int	main()
{
	Parcer	parcer;
	bool	working = true;

	while (working)
	{
		working = parcer.read_stdin();
	}

	for(size_t i = 0; i < parcer._stack.size(); i++)
		std::cout<<parcer._stack[i]<<std::endl;

	return 0;
}
