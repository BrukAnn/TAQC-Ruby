envp_1 = { "a" => 123.0 "b" => 10.0}
envp_2 = { "c" => 10.0, "d" => 6.0}

def attach(envp_1, envp_2)

  return {:status => 'failed', :reason => 'У Вас содержаться лишние елементы в ассоциативном массиве.'} if envp_1.size != 2 or envp_2.size != 2


    if ((envp_1 ["a"] < envp_2["c"]) and (envp_1 ["b"] < envp_2 ["d"])) || ((envp_1 ["a"] < envp_2 ["d"]) and (envp_1 ["b"] < envp_2 ["c"]))
        return 2
    elsif ((envp_2 ["c"] < envp_1 ["a"]) and (envp_2 ["d"] < envp_1 ["b"])) || ((envp_2 ["d"] < envp_1 ["a"]) and (envp_2 ["c"] < envp_1 ["b"]))
        return 1
    else return 0
    end
end
def chek(envp_1, envp_2)
    attach(envp_1, envp_2)
end

#puts attach(envp_1, envp_2)
