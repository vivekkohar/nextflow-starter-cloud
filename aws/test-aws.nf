process check_env {
    container "ACCOUNT_NUM.dkr.ecr.us-east-1.amazonaws.com/ubuntu-test:latest"
    errorStrategy {task.attempt <=5 ? 'retry' : 'terminate'}
    output:
        path("*.txt") into check_env_out
    script:
    """
    #!/bin/bash
    head -c 60G </dev/urandom > filename.txt
    echo "\${PWD}" >> env.txt && ls -al -R . >> env.txt
    nproc >> env.txt
    df -H >> env.txt
    du -kh >> env.txt
    df -h >> env.txt
    """
}
check_env_out.view()
