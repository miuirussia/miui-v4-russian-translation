.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient gn:Ljava/util/concurrent/ConcurrentMap;

.field private transient go:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 105
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private static b(Ljava/lang/Integer;)I
    .locals 1
    .parameter

    .prologue
    .line 464
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private ci()Ljava/util/List;
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->as(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 161
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->X()Ljava/lang/Object;

    move-result-object v3

    .line 162
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 166
    :cond_1
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 480
    sget-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->rS:Lcom/google/common/collect/Serialization$FieldSetter;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 483
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 474
    invoke-static {p0}, Lcom/google/common/collect/HashMultiset;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 475
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->b(Ljava/lang/Integer;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    if-nez p2, :cond_1

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v2

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 220
    :cond_1
    if-lez p2, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "Invalid occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 224
    if-eqz v0, :cond_0

    .line 227
    if-lt p2, v0, :cond_4

    .line 228
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v0

    .line 229
    goto :goto_0

    :cond_3
    move v0, v2

    .line 220
    goto :goto_1

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int v4, v0, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v0

    .line 237
    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;I)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    if-nez p2, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v2

    .line 199
    :goto_0
    return v2

    .line 185
    :cond_0
    if-lez p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid occurrences: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v3

    .line 189
    if-nez v3, :cond_3

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 185
    goto :goto_1

    .line 194
    :cond_3
    const v0, 0x7fffffff

    sub-int/2addr v0, v3

    if-gt p2, v0, :cond_4

    move v0, v1

    :goto_2
    const-string v4, "Overflow adding %s occurrences to a count of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    add-int v0, v3, p2

    .line 198
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p1, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 199
    goto :goto_0

    :cond_4
    move v0, v2

    .line 194
    goto :goto_2
.end method

.method cj()Ljava/util/Set;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->go:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 368
    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->go:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 371
    :cond_0
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 134
    const-wide/16 v0, 0x0

    .line 135
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->gn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 138
    :cond_0
    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic t()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->t()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->ci()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->ci()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
