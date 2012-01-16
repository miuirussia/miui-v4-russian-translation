.class Lcom/google/common/base/Suppliers$MemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient an:Z

.field final delegate:Lcom/google/common/base/Supplier;

.field transient value:Ljava/lang/Object;


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->an:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->an:Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
