.class Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# instance fields
.field final synthetic dI:Ljava/util/Iterator;

.field el:Ljava/util/Iterator;

.field key:Ljava/lang/Object;

.field final synthetic qr:Lcom/google/common/collect/ImmutableMultimap$EntryCollection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$EntryCollection;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->qr:Lcom/google/common/collect/ImmutableMultimap$EntryCollection;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->dI:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->key:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->el:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->key:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->el:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->dI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->key:Ljava/lang/Object;

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->el:Ljava/util/Iterator;

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->el:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
