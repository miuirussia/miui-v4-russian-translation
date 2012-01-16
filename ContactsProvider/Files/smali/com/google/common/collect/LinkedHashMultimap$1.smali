.class Lcom/google/common/collect/LinkedHashMultimap$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field aZ:Ljava/util/Map$Entry;

.field final synthetic gW:Lcom/google/common/collect/LinkedHashMultimap;

.field final synthetic jN:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->jN:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->jN:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->jN:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->aZ:Ljava/util/Map$Entry;

    .line 293
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->aZ:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->jN:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->aZ:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->aZ:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    return-void
.end method
