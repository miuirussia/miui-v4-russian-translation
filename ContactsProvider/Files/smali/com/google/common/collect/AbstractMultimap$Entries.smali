.class Lcom/google/common/collect/AbstractMultimap$Entries;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1210
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 1201
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 1202
    const/4 v0, 0x0

    .line 1205
    :goto_0
    return v0

    .line 1204
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1205
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->ec()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 1213
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 1214
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return v0

    .line 1216
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1217
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->e:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->d(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
