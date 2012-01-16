.class Lcom/google/common/util/concurrent/AbstractIdleService$1$1;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->bC:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->z()V

    .line 45
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->ee()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->e(Ljava/lang/Throwable;)V

    .line 48
    invoke-static {v0}, Lcom/google/common/base/Throwables;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
