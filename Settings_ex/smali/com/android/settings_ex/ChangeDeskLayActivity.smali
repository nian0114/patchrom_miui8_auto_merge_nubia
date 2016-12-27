.class public Lcom/android/settings_ex/ChangeDeskLayActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "ChangeDeskLayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;
    }
.end annotation


# static fields
.field private static final SET_LAYOUT_CHANGE:Landroid/net/Uri;


# instance fields
.field private check_5_4_layout:Landroid/widget/CheckBox;

.field private check_5_5_layout:Landroid/widget/CheckBox;

.field private contentResolver:Landroid/content/ContentResolver;

.field private isSelectLayout5or4:Z

.field private layout_4_5:Landroid/view/View;

.field private layout_5_5:Landroid/view/View;

.field private mLayoutChangeObserver:Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;

.field private numCloumns:I

.field private numRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "content://cn.nubia.launcher.launcherSettings/launcherSettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ChangeDeskLayActivity;->SET_LAYOUT_CHANGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numCloumns:I

    .line 39
    iput v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numRows:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->isSelectLayout5or4:Z

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChangeDeskLayActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChangeDeskLayActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->updateLayoutUriAndData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings_ex/ChangeDeskLayActivity;->SET_LAYOUT_CHANGE:Landroid/net/Uri;

    return-object v0
.end method

.method private setCheck5or4layout()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheckLayoutRowsColumns(I)V

    .line 176
    return-void
.end method

.method private setCheck5or5layout()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheckLayoutRowsColumns(I)V

    .line 180
    return-void
.end method

.method private setCheckLayoutDialog()V
    .locals 3

    .prologue
    .line 192
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v2, 0x7f0d01c0

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0c0e64

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 198
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 199
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 200
    return-void
.end method

.method private setCheckLayoutRowsColumns(I)V
    .locals 8
    .param p1, "rowsColumns"    # I

    .prologue
    .line 159
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v4, "values":Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "value":Ljava/lang/String;
    const-string v5, "name"

    const-string v6, "layoutStyle"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, "value"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    const-string v1, "name=\'layoutStyle\'"

    .line 165
    .local v1, "seleciton":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/settings_ex/ChangeDeskLayActivity;->SET_LAYOUT_CHANGE:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, "update":I
    if-nez v2, :cond_0

    .line 167
    iget-object v5, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/settings_ex/ChangeDeskLayActivity;->SET_LAYOUT_CHANGE:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "seleciton":Ljava/lang/String;
    .end local v2    # "update":I
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setLayoutChangeAndExitDesk()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "shijian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter setLayoutChangeAndExitDesk isSelectLayout5or4 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->isSelectLayout5or4:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->isSelectLayout5or4:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheck5or4layout()V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheck5or5layout()V

    goto :goto_0
.end method

.method private updateCheckPrefLayoutStats()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numCloumns:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numRows:I

    if-ne v0, v4, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 131
    return-void

    .line 118
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numCloumns:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numRows:I

    if-ne v0, v4, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 123
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numCloumns:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numRows:I

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 127
    goto :goto_1

    :cond_5
    move v1, v2

    .line 128
    goto :goto_2
.end method

.method private updateLayoutUriAndData(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings_ex/ChangeDeskLayActivity;->SET_LAYOUT_CHANGE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    :cond_0
    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "name":Ljava/lang/String;
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "value":Ljava/lang/String;
    const-string v1, "layoutStyle"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numCloumns:I

    .line 143
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numRows:I

    .line 145
    :cond_1
    const-string v1, "shijian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numCloumns is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numCloumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", numRows is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->numRows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 151
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->updateCheckPrefLayoutStats()V

    .line 156
    return-void

    .line 148
    :catch_0
    move-exception v7

    .line 149
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-eqz v6, :cond_3

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 151
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 209
    packed-switch p2, :pswitch_data_0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->finish()V

    .line 220
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setLayoutChangeAndExitDesk()V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->updateCheckPrefLayoutStats()V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->layout_4_5:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 68
    const-string v0, "shijian"

    const-string v1, "enter onClick layout_4_5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-boolean v3, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->isSelectLayout5or4:Z

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheckLayoutDialog()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->layout_5_5:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 76
    const-string v0, "shijian"

    const-string v1, "enter onClick layout_5_5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-boolean v2, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->isSelectLayout5or4:Z

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheckLayoutDialog()V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-boolean v3, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->isSelectLayout5or4:Z

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheckLayoutDialog()V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v2, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->isSelectLayout5or4:Z

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setCheckLayoutDialog()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 47
    const v1, 0x7f040048

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->contentResolver:Landroid/content/ContentResolver;

    .line 49
    const v1, 0x7f1200ed

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->layout_4_5:Landroid/view/View;

    .line 50
    const v1, 0x7f1200f1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->layout_5_5:Landroid/view/View;

    .line 51
    const v1, 0x7f1200f0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    .line 52
    const v1, 0x7f1200f4

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    .line 53
    iget-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->layout_4_5:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->layout_5_5:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_4_layout:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->check_5_5_layout:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    const v1, 0x7f0c0e61

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity;->setTitle(I)V

    .line 60
    new-instance v1, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;-><init>(Lcom/android/settings_ex/ChangeDeskLayActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->mLayoutChangeObserver:Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;

    .line 61
    invoke-direct {p0, p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->updateLayoutUriAndData(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->updateCheckPrefLayoutStats()V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 226
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChangeDeskLayActivity;->finish()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->mLayoutChangeObserver:Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;->registObserver(Z)V

    .line 104
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onStop()V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/ChangeDeskLayActivity;->mLayoutChangeObserver:Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChangeDeskLayActivity$LayoutChangeObserver;->registObserver(Z)V

    .line 110
    return-void
.end method
