.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# instance fields
.field private bZ:Landroid/app/AlertDialog$Builder;

.field private ca:Landroid/app/AlertDialog;

.field private cb:Ljava/lang/CharSequence;

.field private cc:Ljava/lang/CharSequence;

.field private cd:Ljava/lang/CharSequence;

.field private ce:Ljava/lang/CharSequence;

.field private cf:[Ljava/lang/CharSequence;

.field private cg:[Ljava/lang/CharSequence;

.field private ch:[Ljava/lang/CharSequence;

.field private ci:[Ljava/lang/CharSequence;

.field private cj:[Ljava/lang/CharSequence;

.field private ck:[Ljava/lang/CharSequence;

.field private cl:[Ljava/lang/CharSequence;

.field private cm:Ljava/lang/CharSequence;

.field private cn:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0
    .parameter

    .prologue
    .line 2033
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2034
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 2035
    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ca:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1
    .parameter

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;[I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 2157
    .line 2158
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText;->b(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v2

    .line 2159
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/ex/editstyledtext/EditStyledText;->b(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v3

    .line 2160
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText;->b(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v4

    .line 2161
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2162
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2163
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2164
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$3;

    invoke-direct {v7, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$3;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2169
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2170
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v6}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2171
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2172
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2173
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 2176
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_3

    .line 2177
    rem-int/lit8 v4, v1, 0x5

    if-nez v4, :cond_0

    .line 2178
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2179
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2181
    :cond_0
    new-instance v4, Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v6}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2182
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 2183
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 2184
    new-instance v6, Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;

    aget v7, p3, v1

    invoke-direct {v6, v7, v2, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;-><init>(IIII)V

    .line 2187
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2188
    aget v6, p3, v1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setDrawingCacheBackgroundColor(I)V

    .line 2189
    if-nez p1, :cond_2

    .line 2190
    new-instance v6, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$4;

    invoke-direct {v6, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$4;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2218
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2203
    :cond_2
    if-ne p1, v8, :cond_1

    .line 2204
    new-instance v6, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;

    invoke-direct {v6, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$5;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 2221
    :cond_3
    if-ne p1, v8, :cond_5

    .line 2222
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cm:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$6;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$6;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2237
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2238
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2239
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$8;

    invoke-direct {v1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$8;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2244
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ca:Landroid/app/AlertDialog;

    .line 2245
    return-void

    .line 2228
    :cond_5
    if-nez p1, :cond_4

    .line 2229
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cm:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$7;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$7;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2134
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2135
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2136
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2137
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$1;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2142
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2143
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2144
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2145
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;

    invoke-direct {v1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$2;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2153
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2154
    return-void
.end method

.method private ai()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2070
    const-string v1, "EditStyledText"

    const-string v2, "--- checkParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2073
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :goto_0
    return v0

    .line 2075
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cb:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cf:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cg:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 2076
    :cond_1
    const-string v1, "EditStyledText"

    const-string v2, "--- color alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2078
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cf:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cg:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    .line 2079
    const-string v1, "EditStyledText"

    const-string v2, "--- the length of color alert params are different."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2082
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private aj()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2087
    const-string v1, "EditStyledText"

    const-string v2, "--- checkParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2090
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :goto_0
    return v0

    .line 2092
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cc:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ch:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ci:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cj:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 2094
    :cond_1
    const-string v1, "EditStyledText"

    const-string v2, "--- size alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2096
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ch:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ci:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cj:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ci:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_3

    .line 2098
    const-string v1, "EditStyledText"

    const-string v2, "--- the length of size alert params are different."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2101
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ak()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2106
    const-string v1, "EditStyledText"

    const-string v2, "--- checkAlignAlertParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2109
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :goto_0
    return v0

    .line 2111
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cd:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 2112
    const-string v1, "EditStyledText"

    const-string v2, "--- align alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2115
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private al()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2120
    const-string v1, "EditStyledText"

    const-string v2, "--- checkMarqueeAlertParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->bZ:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 2123
    const-string v1, "EditStyledText"

    const-string v2, "--- builder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :goto_0
    return v0

    .line 2125
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ce:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 2126
    const-string v1, "EditStyledText"

    const-string v2, "--- Marquee alert params are null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2129
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private am()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2249
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowForegroundColorAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2259
    :goto_0
    return-void

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cg:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v3, v0, [I

    move v1, v2

    .line 2255
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 2256
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cg:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v4, 0x100

    sub-int/2addr v0, v4

    aput v0, v3, v1

    .line 2255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2258
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cb:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->a(ILjava/lang/CharSequence;[I)V

    goto :goto_0
.end method

.method private an()V
    .locals 4

    .prologue
    .line 2263
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowBackgroundColorAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2273
    :goto_0
    return-void

    .line 2268
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cg:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v2, v0, [I

    .line 2269
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 2270
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cg:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v3, 0x100

    sub-int/2addr v0, v3

    aput v0, v2, v1

    .line 2269
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2272
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cb:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->a(ILjava/lang/CharSequence;[I)V

    goto :goto_0
.end method

.method private ao()V
    .locals 3

    .prologue
    .line 2277
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowSizeAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    :goto_0
    return-void

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cc:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ch:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private ap()V
    .locals 3

    .prologue
    .line 2294
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowAlignAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ak()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cd:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ck:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private aq()V
    .locals 3

    .prologue
    .line 2323
    const-string v0, "EditStyledText"

    const-string v1, "--- onShowMarqueeAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->al()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2336
    :goto_0
    return-void

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ce:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->cl:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$11;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$11;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ca:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ci:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic d(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->an()V

    return-void
.end method

.method static synthetic e(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ap()V

    return-void
.end method

.method static synthetic f(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->aq()V

    return-void
.end method

.method static synthetic g(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->am()V

    return-void
.end method

.method static synthetic h(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->ao()V

    return-void
.end method
