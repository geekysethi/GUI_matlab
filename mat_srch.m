function varargout = mat_srch(varargin)
% MAT_SRCH MATLAB code for mat_srch.fig
%      MAT_SRCH, by itself, creates a new MAT_SRCH or raises the existing
%      singleton*.
%
%      H = MAT_SRCH returns the handle to a new MAT_SRCH or the handle to
%      the existing singleton*.
%
%      MAT_SRCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAT_SRCH.M with the given input arguments.
%
%      MAT_SRCH('Property','Value',...) creates a new MAT_SRCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mat_srch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mat_srch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mat_srch

% Last Modified by GUIDE v2.5 30-Jun-2015 01:20:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mat_srch_OpeningFcn, ...
                   'gui_OutputFcn',  @mat_srch_OutputFcn, ...
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


% --- Executes just before mat_srch is made visible.
function mat_srch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mat_srch (see VARARGIN)

% Choose default command line output for mat_srch
handles.output = hObject;
set(handles.array,'string',' ');
set(handles.number,'string',' ');
set(handles.index,'string',' ');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mat_srch wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mat_srch_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Search.
function Search_Callback(hObject, eventdata, handles)
% hObject    handle to Search (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a x
l=length(a);
for i=1:l
    if(x==a(i))
        c=i;
    end
    ste(hamdles.index,'string',c)
end


function number_Callback(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of number as text
%        str2double(get(hObject,'String')) returns contents of number as a double
global x;
x=get(handles.number,'string');
x=str2num(x);

% --- Executes during object creation, after setting all properties.
function number_CreateFcn(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function array_Callback(hObject, eventdata, handles)
% hObject    handle to array (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of array as text
%        str2double(get(hObject,'String')) returns contents of array as a double
global a;
a=get(handles.number,'string');
a=str2num(a);


% --- Executes during object creation, after setting all properties.
function array_CreateFcn(hObject, eventdata, handles)
% hObject    handle to array (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function index_Callback(hObject, eventdata, handles)
% hObject    handle to index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of index as text
%        str2double(get(hObject,'String')) returns contents of index as a double


% --- Executes during object creation, after setting all properties.
function index_CreateFcn(hObject, eventdata, handles)
% hObject    handle to index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
