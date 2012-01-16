.class Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;
.super Ljava/util/AbstractSet;
.source "Multisets.java"


# instance fields
.field final synthetic dr:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->dr:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->dr:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
