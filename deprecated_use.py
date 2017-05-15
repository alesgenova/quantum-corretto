#! /usr/bin/env python3



'''

Only procedures and constants should be imported from modules in the code, the rest should be passed around.
This module contains a dictionary with the modules and variables whose 'USE' use is deprecated

'''

depr = {}

depr['gvect'] = None
depr['fft_base'] = ['dfftp','dffts']
depr['lsda_mod'] = ['nspin']
