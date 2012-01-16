.class Lcom/google/common/collect/MapMaker$SoftEntry;
.super Lcom/google/common/base/FinalizableSoftReference;
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
    .line 938
    sget-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->vq:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 955
    invoke-static {}, Lcom/google/common/collect/MapMaker;->fk()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->h:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 939
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    .line 940
    iput p3, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->hash:I

    .line 941
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$ValueReference;)V
    .locals 0
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->h:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 963
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    invoke-interface {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->j(Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method public f()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->h:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 966
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$SoftEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1

    .prologue
    .line 968
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->hash:I

    return v0
.end method
