.class public final Lcom/google/common/collect/LinkedListMultimap;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient fU:Lcom/google/common/collect/LinkedListMultimap$Node;

.field private transient fV:Lcom/google/common/collect/LinkedListMultimap$Node;

.field private transient fW:Lcom/google/common/collect/Multiset;

.field private transient fX:Ljava/util/Map;

.field private transient fY:Ljava/util/Map;

.field private transient fZ:Ljava/util/Collection;

.field private transient keySet:Ljava/util/Set;

.field private transient map:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->cA()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fW:Lcom/google/common/collect/Multiset;

    .line 162
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    .line 163
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fU:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/LinkedListMultimap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fU:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_0

    .line 187
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->fV:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->fU:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fW:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 221
    return-object v1

    .line 190
    :cond_0
    if-nez p3, :cond_2

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fV:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fV:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 194
    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->fV:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 197
    :cond_1
    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 198
    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 203
    :cond_2
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 204
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 205
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 206
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 207
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_2
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_4

    .line 213
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->fU:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 217
    :goto_3
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 218
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_2

    .line 215
    :cond_4
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_3
.end method

.method private a(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 3
    .parameter

    .prologue
    .line 230
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 235
    :goto_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 240
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 247
    :goto_2
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 254
    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fW:Lcom/google/common/collect/Multiset;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    .line 255
    return-void

    .line 233
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fU:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->qj:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fV:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sQ:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 249
    :cond_4
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->sR:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->n(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fW:Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    return-object v0
.end method

.method private n(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private static o(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 268
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 270
    :cond_0
    return-void
.end method

.method private p(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 528
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->g(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 937
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 938
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->cA()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fW:Lcom/google/common/collect/Multiset;

    .line 939
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    .line 940
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fY:Ljava/util/Map;

    .line 941
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 942
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 944
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 946
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 947
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 927
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 928
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 929
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->x()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 930
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 931
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 933
    :cond_0
    return-void
.end method


# virtual methods
.method public bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 847
    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$5;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 878
    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fX:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 891
    if-ne p1, p0, :cond_0

    .line 892
    const/4 v0, 0x1

    .line 898
    :goto_0
    return v0

    .line 894
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 895
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 896
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->bB()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->bB()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 898
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 563
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$1;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->bB()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 583
    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$2;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 596
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public q(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->p(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 539
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->n(Ljava/lang/Object;)V

    .line 540
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fW:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->bB()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fZ:Ljava/util/Collection;

    .line 768
    if-nez v0, :cond_0

    .line 769
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$4;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->fZ:Ljava/util/Collection;

    .line 805
    :cond_0
    return-object v0
.end method
