.class final enum Lcom/google/common/collect/MapMaker$Strength$3;
.super Lcom/google/common/collect/MapMaker$Strength;
.source "MapMaker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/MapMaker$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    if-nez p4, :cond_0

    new-instance v0, Lcom/google/common/collect/MapMaker$StrongEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMaker$LinkedStrongEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMaker$LinkedStrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)V

    goto :goto_0
.end method

.method b(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v0, Lcom/google/common/collect/MapMaker$StrongValueReference;

    invoke-direct {v0, p2}, Lcom/google/common/collect/MapMaker$StrongValueReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method u(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
