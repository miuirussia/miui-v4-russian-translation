.class final Lcom/google/common/util/concurrent/Futures$5;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field final synthetic dt:Lcom/google/common/base/Function;

.field private final lock:Ljava/lang/Object;

.field private ok:Z

.field final synthetic ol:Ljava/util/concurrent/Future;

.field private value:Ljava/lang/Object;


# direct methods
.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 384
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$5;->ok:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->dt:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$5;->ok:Z

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->ol:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->ol:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->ol:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->ol:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->ol:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
