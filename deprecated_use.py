''' 
    This file is part of fQE.

    Foobar is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Foobar is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with fQE.  If not, see <http://www.gnu.org/licenses/>.
'''

#! /usr/bin/env python3



'''

Only procedures and constants should be imported from modules in the code, the rest should be passed around.
This module contains a dictionary with the modules and variables whose 'USE' use is deprecated

'''

depr = {}

depr['gvect'] = None
depr['fft_base'] = ['dfftp','dffts']
