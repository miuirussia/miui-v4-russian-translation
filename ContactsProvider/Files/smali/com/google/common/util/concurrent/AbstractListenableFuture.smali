.class public abstract Lcom/google/common/util/concurrent/AbstractListenableFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "AbstractListenableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# instance fields
.field private final pX:Lcom/google/common/util/concurrent/ExecutionList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 42
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractListenableFuture;->pX:Lcom/google/common/util/concurrent/ExecutionList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractListenableFuture;->pX:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 50
    return-void
.end method

.method protected done()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractListenableFuture;->pX:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionList;->run()V

    .line 58
    return-void
.end method
