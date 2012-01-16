.class Lcom/google/common/util/concurrent/AbstractService$Transition;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field private final cX:Ljava/util/concurrent/CountDownLatch;

.field private cY:Lcom/google/common/base/Service$State;

.field private cZ:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cX:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>()V

    return-void
.end method

.method private aU()Lcom/google/common/base/Service$State;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cY:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jU:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_0

    .line 298
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cZ:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cY:Lcom/google/common/base/Service$State;

    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Service$State;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->aU()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public aT()Lcom/google/common/base/Service$State;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 285
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->aU()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/google/common/base/Service$State;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cY:Lcom/google/common/base/Service$State;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 259
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cY:Lcom/google/common/base/Service$State;

    .line 260
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cY:Lcom/google/common/base/Service$State;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 266
    sget-object v0, Lcom/google/common/base/Service$State;->jU:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cY:Lcom/google/common/base/Service$State;

    .line 267
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cZ:Ljava/lang/Throwable;

    .line 268
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 269
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->aT()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->cX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
