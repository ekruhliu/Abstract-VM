/* ************************************************************************** */
/*																			*/
/*														:::	  ::::::::   */
/*   Parcer.cpp										 :+:	  :+:	:+:   */
/*													+:+ +:+		 +:+	 */
/*   By: ekruhliu <marvin@42.fr>					+#+  +:+	   +#+		*/
/*												+#+#+#+#+#+   +#+		   */
/*   Created: 2018/09/04 17:02:40 by ekruhliu		  #+#	#+#			 */
/*   Updated: 2018/09/04 17:02:41 by ekruhliu		 ###   ########.fr	   */
/*																			*/
/* ************************************************************************** */

#include "Parcer.hpp"

Parcer::Parcer() {}

Parcer::Parcer(Parcer const &src) { *this = src; }

Parcer& Parcer::operator=(Parcer const &rhs) {
	static_cast<void>(rhs);
	return *this;
}

bool	Parcer::read_stdin()
{
	std::string str;

	std::cin>>str;
	if (str == ";;")
		return false;
	else
	{
		this->_stack.push_back(str);
	}
	return true;
}

size_t		Parcer::getSize() { return this->_stack.size(); }

std::string	Parcer::getStack(int i) { return this->_stack[i]; }

Parcer::~Parcer() {}
