.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

.field private mParams:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 2913
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected D()Z
    .locals 1

    .prologue
    .line 2937
    const/4 v0, 0x0

    return v0
.end method

.method protected Q()Z
    .locals 1

    .prologue
    .line 2941
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->D()Z

    move-result v0

    return v0
.end method

.method protected R()Z
    .locals 1

    .prologue
    .line 2945
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->Q()Z

    move-result v0

    return v0
.end method

.method protected S()Z
    .locals 1

    .prologue
    .line 2949
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->R()Z

    move-result v0

    return v0
.end method

.method protected T()Z
    .locals 1

    .prologue
    .line 2953
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->R()Z

    move-result v0

    return v0
.end method

.method protected U()Z
    .locals 2

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->e(Lcom/android/ex/editstyledtext/EditStyledText;)V

    .line 2958
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 2959
    const/4 v0, 0x1

    return v0
.end method

.method protected d([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 2963
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->mParams:[Ljava/lang/Object;

    .line 2964
    return-void
.end method

.method protected h(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->mParams:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->mParams:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 2969
    :cond_0
    const-string v0, "EditModeActions"

    const-string v1, "--- Number of the parameter is out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const/4 v0, 0x0

    .line 2973
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->mParams:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method
