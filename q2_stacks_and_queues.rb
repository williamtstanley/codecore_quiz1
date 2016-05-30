# Stacks are last in first out and queues are first in first out.

class Stack
    def initialize(stack = [])
        @stack = stack
    end

    def add(item)
        @stack << item
    end

    def remove
        @stack.pop
    end
end

class Queue
    def initialize(queue = [])
        @queue = queue
    end

    def add(item)
        @queue << item
    end

    def remove
        @queue.shift
    end
end

