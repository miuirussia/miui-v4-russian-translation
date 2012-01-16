.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gO:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic gP:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->gP:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->gO:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->gP:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->gO:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->i(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 461
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->gP:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
