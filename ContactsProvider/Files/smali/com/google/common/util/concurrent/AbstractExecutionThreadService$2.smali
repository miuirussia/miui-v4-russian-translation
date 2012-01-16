.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic nR:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;->nR:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method
