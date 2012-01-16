.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final function:Lcom/google/common/base/Function;

.field private final ns:Lcom/google/common/util/concurrent/UninterruptibleFuture;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->ns:Lcom/google/common/util/concurrent/UninterruptibleFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 450
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 452
    new-instance v1, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/Executors;->bb()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 478
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel()Z
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 444
    :catch_2
    move-exception v0

    .line 446
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 468
    :catch_3
    move-exception v0

    .line 471
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 472
    :catch_4
    move-exception v0

    .line 475
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z

    .line 476
    throw v0
.end method
