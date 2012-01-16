.class abstract Lcom/google/common/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient dZ:Ljava/util/Map;

.field private transient fZ:Ljava/util/Collection;

.field private transient keySet:Ljava/util/Set;

.field private transient map:Ljava/util/Map;

.field private transient sK:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 119
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->aa(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 351
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 358
    :goto_0
    return-object v0

    .line 353
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap$WrappedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 355
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 356
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_2
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->l(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$RandomAccessWrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap$RandomAccessWrappedList;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap$WrappedList;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method private aa(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    if-eqz v0, :cond_0

    .line 1064
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1065
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1066
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    :cond_0
    move v0, v1

    move v1, v0

    .line 1068
    :goto_0
    return v1

    .line 1058
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1056
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 2
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    return v0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMultimap;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    return v0
.end method

.method static synthetic c(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 2
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    return v0
.end method

.method static synthetic d(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    return v0
.end method

.method private ft()Ljava/util/Set;
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private fu()Ljava/util/Collection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1186
    instance-of v0, p0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    goto :goto_0
.end method

.method private fv()Ljava/util/Map;
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private l(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .parameter

    .prologue
    .line 624
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method abstract J()Ljava/util/Collection;
.end method

.method O(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->J()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/util/Map;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 124
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    .line 125
    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    .line 126
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 127
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 128
    iget v1, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 127
    goto :goto_1

    .line 130
    :cond_1
    return-void
.end method

.method public bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->dZ:Ljava/util/Map;

    .line 1290
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->fv()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->dZ:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 188
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 323
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    .line 327
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 338
    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->O(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 341
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method ec()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1230
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1459
    if-ne p1, p0, :cond_0

    .line 1460
    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    .line 1462
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 1463
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 1464
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->bB()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1466
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fs()Ljava/util/Map;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    .line 828
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->ft()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 215
    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 219
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 220
    if-eqz v1, :cond_1

    .line 221
    iget v2, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    .line 222
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 226
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->sK:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->fZ:Ljava/util/Collection;

    .line 1181
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->fZ:Ljava/util/Collection;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->fu()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->fZ:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
