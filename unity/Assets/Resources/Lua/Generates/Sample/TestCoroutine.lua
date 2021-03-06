-- Generated by CSharp.lua Compiler
local System = System
local UnityEngine = UnityEngine
local ListInt = System.List(System.Int)
System.namespace("Sample", function (namespace)
  namespace.class("TestCoroutine", function (namespace)
    local Awake, OnTick, Test, __init__, __ctor__
    __init__ = function (this)
      this.list = ListInt()
    end
    __ctor__ = function (this)
      __init__(this)
      this.__base__.__ctor__(this)
    end
    Awake = function (this)
      local i
      UnityEngine.Debug.Log("TestCoroutine")
      this:StartCoroutine(OnTick(this))
      UnityEngine.MonoBehaviour.print(this:getgameObject():getname())
      UnityEngine.MonoBehaviour.print(#this.list)
    end
    OnTick = function (this)
      return System.yieldIEnumerator(function (this)
        while true do
          System.yieldReturn(UnityEngine.WaitForSeconds(1))
          UnityEngine.MonoBehaviour.print("TestCoroutine.OnTick")
        end
      end, System.Object, this)
    end
    Test = function (this)
      UnityEngine.MonoBehaviour.print("TestCoroutine.Test")
    end
    return {
      __inherits__ = function (global)
        return {
          global.UnityEngine.MonoBehaviour
        }
      end,
      Awake = Awake,
      Test = Test,
      __ctor__ = __ctor__
    }
  end)
end)
