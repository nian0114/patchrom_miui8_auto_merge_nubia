.class Lcom/android/phone/NBUPLMNEditor$2;
.super Ljava/lang/Object;
.source "NBUPLMNEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBUPLMNEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBUPLMNEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/NBUPLMNEditor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBUPLMNEditor$2;->this$0:Lcom/android/phone/NBUPLMNEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBUPLMNEditor$2;->this$0:Lcom/android/phone/NBUPLMNEditor;

    # getter for: Lcom/android/phone/NBUPLMNEditor;->mUPLMNEditorFragment:Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;
    invoke-static {v0}, Lcom/android/phone/NBUPLMNEditor;->access$100(Lcom/android/phone/NBUPLMNEditor;)Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;

    move-result-object v0

    const/4 v1, 0x2

    # invokes: Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->dealActivityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->access$200(Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;I)V

    return-void
.end method
