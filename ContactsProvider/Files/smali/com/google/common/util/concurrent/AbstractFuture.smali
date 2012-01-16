.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field private final ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    .line 177
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    .line 129
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 130
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 132
    :cond_1
    return v0
.end method

.method protected final cancel()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->cancel()Z

    move-result v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    .line 148
    :cond_0
    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected done()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->i(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    .line 108
    :cond_0
    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->ct:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    return v0
.end method
