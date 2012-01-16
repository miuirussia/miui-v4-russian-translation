.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/base/Service;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mr:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private final ms:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private mt:Lcom/google/common/base/Service$State;

.field private mu:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mr:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 47
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->ms:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 53
    sget-object v0, Lcom/google/common/base/Service$State;->jP:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mu:Z

    .line 251
    return-void
.end method


# virtual methods
.method protected abstract doStop()V
.end method

.method protected final e(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jQ:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mr:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Ljava/lang/Throwable;)V

    .line 216
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->ms:Lcom/google/common/util/concurrent/AbstractService$Transition;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Ljava/lang/Throwable;)V

    .line 222
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/common/base/Service$State;->jU:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    return-void

    .line 218
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jS:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->ms:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final ed()Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jP:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_1

    .line 107
    sget-object v0, Lcom/google/common/base/Service$State;->jT:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    .line 108
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mr:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/base/Service$State;->jT:Lcom/google/common/base/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Lcom/google/common/base/Service$State;)V

    .line 109
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->ms:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/base/Service$State;->jT:Lcom/google/common/base/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Lcom/google/common/base/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->ms:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v0

    .line 110
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jQ:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_2

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mu:Z

    .line 112
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mr:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/base/Service$State;->jS:Lcom/google/common/base/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Lcom/google/common/base/Service$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 113
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jR:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_0

    .line 114
    sget-object v0, Lcom/google/common/base/Service$State;->jS:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    .line 115
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected final ee()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jQ:Lcom/google/common/base/Service$State;

    if-eq v0, v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->e(Ljava/lang/Throwable;)V

    .line 164
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 167
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/common/base/Service$State;->jR:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    .line 168
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mu:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->ed()Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    return-void

    .line 171
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mr:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/base/Service$State;->jR:Lcom/google/common/base/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Lcom/google/common/base/Service$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final ef()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jS:Lcom/google/common/base/Service$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jR:Lcom/google/common/base/Service$State;

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->e(Ljava/lang/Throwable;)V

    .line 193
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 196
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/common/base/Service$State;->jT:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    .line 197
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->ms:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/base/Service$State;->jT:Lcom/google/common/base/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->b(Lcom/google/common/base/Service$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    return-void
.end method

.method public final eg()Lcom/google/common/base/Service$State;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 235
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->jQ:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_0

    .line 236
    sget-object v0, Lcom/google/common/base/Service$State;->jS:Lcom/google/common/base/Service$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 238
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->mt:Lcom/google/common/base/Service$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->eg()Lcom/google/common/base/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Service$State;->jR:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
