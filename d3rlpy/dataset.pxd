cimport numpy as np

from libcpp.vector cimport vector
from libcpp.memory cimport make_shared, shared_ptr


cdef extern from "d3rlpy/dataset.h" namespace "d3rlpy" nogil:
    cdef cppclass CTransition:
        vector[int] observation_shape
        int action_size
        np.uint8_t* observation_i
        np.float32_t* observation_f
        int action_i
        np.float32_t* action_f
        float reward
        np.uint8_t* next_observation_i
        np.float32_t* next_observation_f
        int next_action_i
        np.float32_t* next_action_f
        float next_reward
        float terminal
        shared_ptr[CTransition] prev_transition
        shared_ptr[CTransition] next_transition
