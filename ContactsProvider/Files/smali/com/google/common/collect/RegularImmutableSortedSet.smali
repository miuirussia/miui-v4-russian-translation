.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# instance fields
.field private final elements:[Ljava/lang/Object;

.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 55
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 57
    array-length v0, p1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    .line 58
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 63
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    .line 64
    iput p3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 65
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    .line 66
    return-void
.end method

.method private L(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->x(Ljava/lang/Object;)I

    move-result v0

    .line 237
    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private j(II)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 242
    if-ge p1, p2, :cond_0

    .line 243
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method private x(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 131
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 132
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 134
    :goto_0
    if-gt v1, v0, :cond_2

    .line 135
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 136
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->n(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 137
    if-gez v3, :cond_0

    .line 138
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 139
    :cond_0
    if-lez v3, :cond_1

    .line 140
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 146
    :goto_1
    return v0

    :cond_2
    neg-int v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method J(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter

    .prologue
    .line 223
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->L(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->j(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method K(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->L(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->j(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method cH()Lcom/google/common/collect/ImmutableList;
    .locals 4

    .prologue
    .line 271
    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>([Ljava/lang/Object;IILcom/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->x(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 105
    :cond_1
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 110
    :cond_2
    :goto_1
    iget v5, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-lt v1, v5, :cond_3

    move v0, v2

    .line 111
    goto :goto_0

    .line 114
    :cond_3
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->n(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 116
    if-gez v5, :cond_4

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_4
    if-nez v5, :cond_6

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    .line 120
    goto :goto_0

    .line 122
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_6
    if-lez v5, :cond_2

    move v0, v2

    .line 125
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    if-ne p1, p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_2

    move v0, v1

    .line 172
    goto :goto_0

    .line 175
    :cond_2
    check-cast p1, Ljava/util/Set;

    .line 176
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 177
    goto :goto_0

    .line 180
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 183
    :try_start_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    :goto_1
    iget v4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v2, v4, :cond_0

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;->n(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v0, v1

    .line 187
    goto :goto_0

    .line 183
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    move v0, v1

    .line 192
    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->L(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->L(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->j(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    :goto_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return v1
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 255
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->x(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 266
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    sub-int v0, v1, v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->a([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/Platform;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 152
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    .line 158
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 159
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 163
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/common/collect/Platform;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 164
    return-object p1

    .line 160
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 161
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
