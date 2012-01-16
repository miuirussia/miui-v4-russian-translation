.class Lcom/google/common/collect/RegularImmutableList$1;
.super Ljava/lang/Object;
.source "RegularImmutableList.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic dX:Lcom/google/common/collect/RegularImmutableList;

.field index:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableList;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList$1;->dX:Lcom/google/common/collect/RegularImmutableList;

    iput p2, p0, Lcom/google/common/collect/RegularImmutableList$1;->val$start:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->val$start:I

    iput v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->dX:Lcom/google/common/collect/RegularImmutableList;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableList;->a(Lcom/google/common/collect/RegularImmutableList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->dX:Lcom/google/common/collect/RegularImmutableList;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    .line 153
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->dX:Lcom/google/common/collect/RegularImmutableList;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    .line 163
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
