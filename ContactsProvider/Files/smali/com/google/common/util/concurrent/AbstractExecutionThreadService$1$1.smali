.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->nR:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->z()V

    .line 43
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->ee()V

    .line 45
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->nR:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->nR:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->A()V

    .line 57
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->ef()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    :try_start_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->nR:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->A()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 52
    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->tk:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->e(Ljava/lang/Throwable;)V

    .line 60
    invoke-static {v0}, Lcom/google/common/base/Throwables;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 51
    :catch_2
    move-exception v1

    goto :goto_0
.end method
