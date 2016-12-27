.class public Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppTypeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppTypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    .line 73
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 74
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # getter for: Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppEntityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$000(Lcom/android/settings_ex/applications/AppTypeListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # getter for: Lcom/android/settings_ex/applications/AppTypeListActivity;->mAppEntityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$000(Lcom/android/settings_ex/applications/AppTypeListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->getItem(I)Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "holder":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;
    if-nez p2, :cond_0

    .line 92
    new-instance v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;

    .end local v0    # "holder":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;Lcom/android/settings_ex/applications/AppTypeListActivity$1;)V

    .line 93
    .restart local v0    # "holder":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 95
    const v1, 0x7f120150

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;->defaultAppType:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f12014f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;->defaultAppSummary:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v1, v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;->defaultAppType:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->getItem(I)Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;->defaultAppType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;->defaultAppSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;->getItem(I)Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;->defaultAppSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-object p2

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;
    check-cast v0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;

    .restart local v0    # "holder":Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;
    goto :goto_0
.end method
