.class Lcom/google/common/collect/Iterators$PeekingImpl;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private q:Z

.field private r:Ljava/lang/Object;


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->q:Z

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 968
    :goto_0
    return-object v0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->r:Ljava/lang/Object;

    .line 966
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->q:Z

    .line 967
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->r:Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->b(ZLjava/lang/Object;)V

    .line 973
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 974
    return-void

    .line 972
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
