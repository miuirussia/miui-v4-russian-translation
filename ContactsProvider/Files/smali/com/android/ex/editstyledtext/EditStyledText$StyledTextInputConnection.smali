.class public Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EditStyledText.java"


# instance fields
.field cn:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2477
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 2478
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 2479
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2484
    const-string v0, "EditStyledText"

    const-string v1, "--- commitText:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->d(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->di()V

    .line 2487
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 2493
    const-string v0, "EditStyledText"

    const-string v1, "--- finishcomposing:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->bw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->bu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2497
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->bk()V

    .line 2499
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    move-result v0

    return v0
.end method
