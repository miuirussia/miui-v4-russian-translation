.class Lcom/google/common/collect/MapMaker$WeakEntry;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ReferenceEntry;


# instance fields
.field volatile h:Lcom/google/common/collect/MapMaker$ValueReference;

.field final hash:I

.field final internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    sget-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->vq:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1013
    invoke-static {}, Lcom/google/common/collect/MapMaker;->fk()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->h:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 997
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    .line 998
    iput p3, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->hash:I

    .line 999
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$ValueReference;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->h:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 1021
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    invoke-interface {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->j(Ljava/lang/Object;)Z

    .line 1007
    return-void
.end method

.method public f()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->h:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/common/collect/MapMaker$WeakEntry;->hash:I

    return v0
.end method
