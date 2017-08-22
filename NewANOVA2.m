function varargout = NewANOVA2(varargin)
% NewANOVA2 MATLAB code for NewANOVA2.fig
%      NewANOVA2, by itself, creates a new NewANOVA2 or raises the existing
%      singleton*.
%
%      H = NewANOVA2 returns the handle to a new NewANOVA2 or the handle to
%      the existing singleton*.
%
%      NewANOVA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NewANOVA2.M with the given input arguments.
%
%      NewANOVA2('Property','Value',...) creates a new NewANOVA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NewANOVA2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NewANOVA2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NewANOVA2

% Last Modified by GUIDE v2.5 24-Aug-2016 00:28:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NewANOVA2_OpeningFcn, ...
                   'gui_OutputFcn',  @NewANOVA2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before NewANOVA2 is made visible.
function NewANOVA2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NewANOVA2 (see VARARGIN)

% Choose default command line output for NewANOVA2
handles.output = hObject;
handles.counter = zeros(1,7);
handles.firstfile = 0;
handles.secondfile = 0;
handles.thirdfile = 0;
handles.fourthfile = 0;
handles.fifthfile = 0;
handles.sixthfile = 0;
handles.seventhfile = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NewANOVA2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NewANOVA2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

guidata(hObject,handles);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, pathname] = uigetfile({'*.xls';'*.xlsx';'*.*'},'File Selector');
if(FileName~= 0)
       % Create full file name from the folder and base file name.
FileName = strcat(pathname, FileName);
        % Read in the file into an data.
handles.firstfile = xlsread(FileName);
% handles.firstfile(:,4) = [];
handles.y1 = ones(length(handles.firstfile),1);
set(handles.text10, 'String', FileName);

handles.counter(1) = 1;
end
%setappdata
% assignin('base','data',alldata)
guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, pathname] = uigetfile({'*.xls';'*.xlsx';'*.*'},'File Selector');
if(FileName~= 0)
       % Create full file name from the folder and base file name.
FileName = fullfile(pathname, FileName);
        % Read in the file into an data.
handles.secondfile = xlsread(FileName);
% handles.secondfile(:,4) = [];
handles.y2 = 2 .* ones(length(handles.secondfile),1);
set(handles.text11, 'String', FileName);
handles.counter(2) = 1;
end
guidata(hObject, handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, pathname] = uigetfile({'*.xls';'*.xlsx';'*.*'},'File Selector');
if(FileName~= 0)
       % Create full file name from the folder and base file name.
FileName = fullfile(pathname, FileName);
        % Read in the file into an data.
handles.thirdfile = xlsread(FileName);
set(handles.text12, 'String', FileName);
% handles.thirdfile(:,4) = [];
handles.y3 = 3 .* ones(length(handles.thirdfile),1);
handles.counter(3) = 1;
end
guidata(hObject, handles);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, pathname] = uigetfile({'*.xls';'*.xlsx';'*.*'},'File Selector');
if(FileName~= 0)
       % Create full file name from the folder and base file name.
FileName = fullfile(pathname, FileName);
        % Read in the file into an data.
handles.fourthfile = xlsread(FileName);
% handles.fourthfile(:,4) = [];
handles.y4 = 4 .* ones(length(handles.fourthfile),1);
set(handles.text13, 'String', FileName);
handles.counter(4) = 1;
end
guidata(hObject, handles);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, pathname] = uigetfile({'*.xls';'*.xlsx';'*.*'},'File Selector');
if(FileName~= 0)
       % Create full file name from the folder and base file name.
FileName = fullfile(pathname, FileName);
        % Read in the file into an data.
handles.fifthfile = xlsread(FileName);
% handles.fifthfile(:,4) = [];
handles.y5 = 5 .* ones(length(handles.fifthfile),1);
set(handles.text14, 'String', FileName);
handles.counter(5) = 1;
end
guidata(hObject, handles);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, pathname] = uigetfile({'*.xls';'*.xlsx';'*.*'},'File Selector');
if(FileName~= 0)
       % Create full file name from the folder and base file name.
FileName = fullfile(pathname, FileName);
        % Read in the file into an data.
handles.sixthfile = xlsread(FileName);
% handles.sixthfile(:,4) = [];
handles.y6 = 6 .* ones(length(handles.sixthfile),1);
set(handles.text15, 'String', FileName);
handles.counter(6) = 1;
end
guidata(hObject, handles);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, pathname] = uigetfile({'*.xls';'*.xlsx';'*.*'},'File Selector');
if(FileName~= 0)
       % Create full file name from the folder and base file name.
FileName = fullfile(pathname, FileName);
        % Read in the file into an data.
handles.seventhfile = xlsread(FileName);
% handles.seventhfile(:,4) = [];
handles.y7 = 7 .* ones(length(handles.seventhfile),1);
set(handles.text16, 'String', FileName);
handles.counter(7) = 1;
end
guidata(hObject, handles);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
handles.checkbox1 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
handles.checkbox7 = get(hObject,'Value');
guidata(hObject, handles);
% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3
handles.checkbox3 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4
handles.checkbox4 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5
handles.checkbox5 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6
handles.checkbox6 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7
handles.checkbox7 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8
handles.checkbox8 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9
handles.checkbox9 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox11.
function checkbox11_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox11
handles.checkbox11 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12
handles.checkbox12 = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% close all;
if sum(handles.counter) < 2
    msgbox({'Please input at least two excel files to compare.'});
else
    handles.state = zeros(1,12);
    handles.state(1) = handles.checkbox7;
    handles.state(2) = handles.checkbox8;
    handles.state(3) = handles.checkbox9;
    handles.state(5) = handles.checkbox1;
    handles.state(6) = handles.checkbox2;
    handles.state(7) = handles.checkbox3;
    handles.state(8) = handles.checkbox4;
    handles.state(9) = handles.checkbox5;
    handles.state(10) = handles.checkbox6;
    handles.state(11) = handles.checkbox11;
    handles.state(12) = handles.checkbox12;
%      %state(1) = get(hObject.checkbox7,'Value');
%      state(2) = get(hObject.checkbox8,'Value');
%      state(3) = get(hObject.checkbox9,'Value');
%      state(5) = get(hObject.checkbox1,'Value');
%      state(6) = get(hObject.checkbox2,'Value');
%      state(7) = get(hObject.checkbox3,'Value');
%      state(8) = get(hObject.checkbox4,'Value');
%      state(9) = get(hObject.checkbox5,'Value');
%      state(10) = get(hObject.checkbox6,'Value');
%      state(11) = get(hObject.checkbox11,'Value');
%      state(12) = get(hObject.checkbox12,'Value');
     allData = [];
     ally = [];

         if handles.firstfile~=0
             allData = [allData; handles.firstfile];
             ally = [ally; handles.y1];
         end
         if handles.secondfile~=0
             allData = [allData; handles.secondfile];
             ally = [ally; handles.y2];
         end
         if handles.thirdfile~=0
             allData = [allData; handles.thirdfile];
             ally = [ally; handles.y3];
         end
         if handles.thirdfile~=0
             allData = [allData; handles.thirdfile];
             ally = [ally; handles.y3];
         end
         if handles.fourthfile~=0
             allData = [allData; handles.fourthfile];
             ally = [ally; handles.y4];
         end
         if handles.fifthfile~=0
             allData = [allData; handles.fifthfile];
             ally = [ally; handles.y5];
         end
         if handles.sixthfile~=0
             allData = [allData; handles.sixthfile];
             ally = [ally; handles.y6];
         end
         if handles.seventhfile~=0
             allData = [allData; handles.seventhfile];
             ally = [ally; handles.y7];
         end

      if handles.state == zeros(1,12)
          handles.state = [1 1 1 0 1 1 1 1 1 1 1 1];
      end
      if handles.state(1)
%           figure(1)
%           [handles.p1,handles.table1,~] = anova1(allData(:,1), ally,'off');
% %           setTableTitle(handles.table1, 'Connectedness')
          [habdles.p1,handles.table1,handles.stats1] = anova1(allData(:,1), ally, 'on');
%           setTableTitle(handles.table1, 'Connectedness')
          title('Connectedness')
           figure ()
          multcompare(handles.stats1);
          title('Connectedness')
      end
      if handles.state(2)
          [habdles.p2,handles.table2,handles.stats2] = anova1(allData(:,2), ally, 'on');
%           setTableTitle(handles.table2, 'Connectedness')
          title('Number of Branch Points')
           figure ()
          multcompare(handles.stats2);
          title('Number of Branch Points')
      end
%          columns = find(state);
%         if handles.firstfile ~= 0
%             handles.firstfile = handles.firstfile(:,columns);
%         end
%         if handles.secondfile ~= 0
%             handles.secondfile = handles.secondfile(:,columns);
%         end
%         if handles.thirdfile ~= 0
%             handles.thirdfile = handles.thirdfile(:,columns);
%         end
%         if handles.fourthfile ~= 0
%             handles.fourthfile = handles.fourthfile(:,columns);
%         end
%         if handles.fifthfile ~= 0
%             handles.fifthfile = handles.fifthfile(:,columns);
%         end
%         if handles.sixthfile ~= 0
%             handles.sixthfile = handles.sixthfile(:,columns);
%         end
%         if handles.seventhfile ~= 0
%             handles.seventhfile = handles.seventhfile(:,columns);
%         end
%     if state1 == 1
%         if handles.firstfile ~= 0
%             Connectedness1 = handles.firstfile(:,2);
%         end
%         if handles.secondfile ~= 0
%             Connectedness2 = handles.secondfile(:,2);
%         end
%         if handles.thirdfile ~= 0
%             Connectedness3 = handles.thirdfile(:,2);
%         end
%         if handles.fourthfile ~= 0
%             Connectedness4 = handles.fourthfile(:,2);
%         end
%         if handles.fifthfile ~= 0
%             Connectedness5 = handles.fifthfile(:,2);
%         end
%         if handles.sixthfile ~= 0
%             Connectedness6 = handles.sixthfile(:,2);
%         end
%         if handles.seventhfile ~= 0
%             Connectedness7 = handles.seventhfile(:,2);
%         end
%     end
% 
%     if state2 == 1
%         if handles.firstfile ~= 0
%             numberofbranchpoints1 = handles.firstfile(:,3);
%         end
%         if handles.secondfile ~= 0
%             numberofbranchpoints2 = handles.secondfile(:,3);
%         end
%         if handles.thirdfile ~= 0
%             numberofbranchpoints3 = handles.thirdfile(:,3);
%         end
%         if handles.fourthfile ~= 0
%             numberofbranchpoints4 = handles.fourthfile(:,3);
%         end
%         if handles.fifthfile ~= 0
%             numberofbranchpoints5 = handles.fifthfile(:,3);
%         end
%         if handles.sixthfile ~= 0
%             numberofbranchpoints6 = handles.sixthfile(:,3);
%         end
%         if handles.seventhfile ~= 0
%             numberofbranchpoints7 = handles.seventhfile(:,3);
%         end
%     end
%     if state3 == 1
%         if handles.firstfile ~= 0
%             numberofbranches1 = handles.firstfile(:,4);
%         end
%         if handles.secondfile ~= 0
%             numberofbranches2 = handles.secondfile(:,4);
%         end
%         if handles.thirdfile ~= 0
%             numberofbranches3 = handles.thirdfile(:,4);
%         end
%         if handles.fourthfile ~= 0
%             numberofbranches4 = handles.fourthfile(:,4);
%         end
%         if handles.fifthfile ~= 0
%             numberofbranches5 = handles.fifthfile(:,4);
%         end
%         if handles.sixthfile ~= 0
%             numberofbranches6 = handles.sixthfile(:,4);
%         end
%         if handles.seventhfile ~= 0
%             numberofbranches7 = handles.seventhfile(:,4);
%         end
%     end
%   
%     if state4 == 1
%         if handles.firstfile ~= 0
%             meanbranchlength1 = handles.firstfile(:,6);
%         end
%         if handles.secondfile ~= 0
%             meanbranchlength2 = handles.secondfile(:,6);
%         end
%         if handles.thirdfile ~= 0
%             meanbranchlength3 = handles.thirdfile(:,6);
%         end
%         if handles.fourthfile ~= 0
%             meanbranchlength4 = handles.fourthfile(:,6);
%         end
%         if handles.fifthfile ~= 0
%             meanbranchlength5 = handles.fifthfile(:,6);
%         end
%         if handles.sixthfile ~= 0
%             meanbranchlength6 = handles.sixthfile(:,6);
%         end
%         if handles.seventhfile ~= 0
%             meanbranchlength7 = handles.seventhfile(:,6);
%         end
%     end
%   
%     if state5 == 1
%         if handles.firstfile ~= 0
%             branchlengthSTD1 = handles.firstfile(:,7);
%         end
%         if handles.secondfile ~= 0
%             branchlengthSTD2 = handles.secondfile(:,7);
%         end
%         if handles.thirdfile ~= 0
%             branchlengthSTD3 = handles.thirdfile(:,7);
%         end
%         if handles.fourthfile ~= 0
%             branchlengthSTD4 = handles.fourthfile(:,7);
%         end
%         if handles.fifthfile ~= 0
%             branchlengthSTD5 = handles.fifthfile(:,7);
%         end
%         if handles.sixthfile ~= 0
%             branchlengthSTD6 = handles.sixthfile(:,7);
%         end
%         if handles.seventhfile ~= 0
%             branchlengthSTD7 = handles.seventhfile(:,7);
%         end
%     end
%    
%     if state6 == 1
%         if handles.firstfile ~= 0
%             meanbranchwidth1 = handles.firstfile(:,8);
%         end
%         if handles.secondfile ~= 0
%             meanbranchwidth2 = handles.secondfile(:,3);
%         end
%         if handles.thirdfile ~= 0
%             meanbranchwidth3 = handles.thirdfile(:,3);
%         end
%         if handles.fourthfile ~= 0
%             meanbranchwidth4 = handles.fourthfile(:,3);
%         end
%         if handles.fifthfile ~= 0
%             meanbranchwidth5 = handles.fifthfile(:,3);
%         end
%         if handles.sixthfile ~= 0
%             meanbranchwidth6 = handles.sixthfile(:,3);
%         end
%         if handles.seventhfile ~= 0
%             meanbranchwidth7 = handles.seventhfile(:,3);
%         end
%     end

end
guidata(hObject, handles);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox({'1. ANOVA checks the differences between the means of two samples/ populations while MANOVA checks for the differences between multiple sample/populations.' '2. ANOVA concerns about two variables, while MANOVA concerns the differences in multiple variables simultaneously.'  '3. MANOVA uses covariance-variance relationship.' '4. When you choose ANOVA, the variable you choose will be comppared one by one thus you will have multiple results. When you choose MANOVA, all variables will be compared together and you will only have one result.'})



% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text10.
function text10_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'plot(rand(5))', 'plot(sin(1:0.01:25))', 'bar(1:.5:10)', 'plot(membrane)', 'surf(peaks)'});

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
cla;

popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
        plot(rand(5));
    case 2
        plot(sin(1:0.01:25.99));
    case 3
        bar(1:.5:10);
    case 4
        plot(membrane);
    case 5
        surf(peaks);
end
