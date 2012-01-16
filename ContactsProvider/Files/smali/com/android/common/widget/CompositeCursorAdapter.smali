.class public abstract Lcom/android/common/widget/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# instance fields
.field private bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

.field private bR:Z

.field private bS:Z

.field private bT:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mSize:I


# virtual methods
.method public a(ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->td:Landroid/database/Cursor;

    .line 212
    if-eq v0, p2, :cond_2

    .line 213
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->td:Landroid/database/Cursor;

    .line 217
    if-eqz p2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->te:I

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 221
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 223
    :cond_2
    return-void
.end method

.method public a(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 88
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 89
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v0, v0, 0x2

    .line 90
    new-array v0, v0, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 91
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    aput-object p1, v0, v1

    .line 95
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 96
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public ag()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    return v0
.end method

.method protected ah()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bR:Z

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_0
    iput v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    move v0, v1

    .line 170
    :goto_1
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v0, v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->td:Landroid/database/Cursor;

    .line 172
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 173
    :goto_2
    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->tc:Z

    if-eqz v3, :cond_2

    .line 174
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->tb:Z

    if-eqz v3, :cond_2

    .line 175
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v0

    iput v2, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    .line 179
    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 172
    goto :goto_2

    .line 182
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bR:Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bS:Z

    .line 517
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bT:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 520
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ah()V

    .line 197
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bR:Z

    .line 158
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bS:Z

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bT:Z

    .line 526
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bT:Z

    goto :goto_0
.end method

.method public w(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-lt p1, v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public x(I)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->bQ:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->td:Landroid/database/Cursor;

    return-object v0
.end method
