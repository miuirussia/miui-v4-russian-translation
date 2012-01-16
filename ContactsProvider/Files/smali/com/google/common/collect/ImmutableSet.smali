.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static U(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;I)Lcom/google/common/collect/ImmutableSet;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->J(I)I

    move-result v3

    .line 256
    new-array v4, v3, [Ljava/lang/Object;

    .line 257
    add-int/lit8 v5, v3, -0x1

    .line 259
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v0, v1

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 263
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 265
    invoke-static {v9}, Lcom/google/common/collect/Hashing;->I(I)I

    move-result v2

    .line 266
    :goto_1
    and-int v10, v2, v5

    .line 267
    aget-object v11, v4, v10

    .line 268
    if-nez v11, :cond_1

    .line 270
    aput-object v8, v4, v10

    .line 271
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/2addr v0, v9

    .line 273
    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 282
    new-instance v2, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    move-object v0, v2

    .line 287
    :goto_2
    return-object v0

    .line 283
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->J(I)I

    move-result v1

    if-le v3, v1, :cond_4

    .line 285
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Iterable;I)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_2

    .line 287
    :cond_4
    new-instance v1, Lcom/google/common/collect/RegularImmutableSet;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto :goto_2
.end method

.method public static eB()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->vo:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter

    .prologue
    .line 180
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v0, :cond_0

    .line 183
    check-cast p0, Lcom/google/common/collect/ImmutableSet;

    .line 186
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->k(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->U(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .parameter

    .prologue
    .line 249
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Iterable;I)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter

    .prologue
    .line 205
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Iterable;I)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->U(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method Y()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 224
    if-ne p1, p0, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 227
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 231
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 241
    :cond_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract s()Lcom/google/common/collect/UnmodifiableIterator;
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
