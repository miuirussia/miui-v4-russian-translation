.class Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final nC:Ljava/util/Iterator;

.field final synthetic nD:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->nD:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->nD:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->dr:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->nC:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public be()Lcom/google/common/collect/Multiset$Entry;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->nC:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->nC:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->be()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->nC:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 304
    return-void
.end method
