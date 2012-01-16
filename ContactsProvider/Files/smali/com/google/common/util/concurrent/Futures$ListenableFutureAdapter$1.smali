.class Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic da:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->da:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->da:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->a(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->da:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->b(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionList;->run()V

    .line 559
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 554
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter thread interrupted!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 555
    :catch_1
    move-exception v0

    goto :goto_0

    .line 549
    :catch_2
    move-exception v0

    goto :goto_0
.end method
