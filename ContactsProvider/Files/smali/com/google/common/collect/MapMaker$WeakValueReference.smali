.class Lcom/google/common/collect/MapMaker$WeakValueReference;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# instance fields
.field final hx:Lcom/google/common/collect/MapMaker$ReferenceEntry;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1054
    sget-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->vq:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1055
    iput-object p2, p0, Lcom/google/common/collect/MapMaker$WeakValueReference;->hx:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .line 1056
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 2
    .parameter

    .prologue
    .line 1064
    new-instance v0, Lcom/google/common/collect/MapMaker$WeakValueReference;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/MapMaker$WeakValueReference;-><init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public as()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$WeakValueReference;->hx:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->g()V

    .line 1060
    return-void
.end method
