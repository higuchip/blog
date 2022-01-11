import numpy as np

caps = [15.7, 18, 20, 25, 23]

daps = [cap/np.pi for cap in caps]
asec = [(np.pi * dap**2)/40000 for dap in daps]
print(asec)

def f( x): 
    return x**2
 
