process check_env {
    errorStrategy {task.attempt <=5 ? 'retry' : 'terminate'}
    output:
        path("*env.txt") into check_env_out
    script:
    """
    #!/bin/bash
    echo "\${PWD}" >> env.txt && ls -al -R . >> env.txt
    samtools --version >> env.txt
    nproc >> env.txt
    df -H >> env.txt
    """
}
check_env_out.view()
