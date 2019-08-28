class ClassandStaticMethod(object):
    value = "get the value without instance"

    def __init__(self, data):
        self.data = data
        self.value = "get the value without instance"

    @classmethod
    def InteractClassWithoutInstance(cls):
        return cls.value+" added successfuly"


print(ClassandStaticMethod.InteractClassWithoutInstance())
