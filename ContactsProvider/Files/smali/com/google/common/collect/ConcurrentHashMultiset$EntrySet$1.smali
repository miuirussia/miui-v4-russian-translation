.class Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;
.super Ljava/lang/Object;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic gf:Ljava/util/Iterator;

.field final synthetic gg:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->gg:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->gf:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public be()Lcom/google/common/collect/Multiset$Entry;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->gf:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->gf:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->be()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;->gf:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 409
    return-void
.end method
